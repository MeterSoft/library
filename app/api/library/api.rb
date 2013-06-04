module Library
  class API < Grape::API
    resource :users do
      get do
        User.all
      end

      post do
        User.create(params[:user])
      end

      put ':id' do
        User.find(params[:id]).update_attributes(params[:user])
      end

      delete ':id' do
        User.find(params[:id]).destroy
      end

      get ':id' do
        User.find(params[:id])
      end

      get ':id/categories' do
        User.find(params[:id]).categories
      end

      post ':id/category' do
        user = User.find(params[:id])
        category = Category.create(params[:category])
        user.categories << category
      end

      get ':id/books' do
        User.find(params[:id]).books
      end

      post ':id/book' do
        user = User.find(params[:id])
        book = Book.create(params[:book])
        user.books << book
      end
    end

    resource :categories do
      get do
        Category.all
      end

      post do
        Category.create(params[:category])
      end

      put ':id' do
        Category.find(params[:id]).update_attributes(params[:category])
      end

      delete ':id' do
        Category.find(params[:id]).destroy
      end

      get ':id' do
        Category.find(params[:id])
      end

      get ':id/books' do
        User.find(params[:id]).categories
      end

      post ':id/book' do
        category = Category.find(params[:id])
        book = Book.create(params[:book])
        category.books << book
      end
    end

    resource :books do
      get do
        Book.all
      end

      post do
        Book.create(params[:book])
      end

      put ':id' do
        Book.find(params[:id]).update_attributes(params[:book])
      end

      delete ':id' do
        Book.find(params[:id]).destroy
      end

      get ':id' do
        Book.find(params[:id])
      end
    end
  end
end