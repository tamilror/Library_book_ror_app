class Api::V1::LibrariesController < ApplicationController
 before_action :set_library

def show
  books = @library.books.select(:id, :title, :author, :available, :checked_out)
  render json: {library: @library, books: books}
rescue ActiveRecord::RecordNotFound
  render json: {error: 'Library Not Found'}, status: :not_found
end

private

def set_library
  @library = Library.find(params[:id])
end

end
