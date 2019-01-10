=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Content::LibraryItemApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LibraryItemApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Content::LibraryItemApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LibraryItemApi' do
    it 'should create an instance of LibraryItemApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Content::LibraryItemApi)
    end
  end

  # unit tests for copy
  # Copies a library item. &lt;p&gt; Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task. &lt;p&gt; If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator. &lt;p&gt; A library item cannot be copied into a subscribed library.
  # @param source_library_item_id Identifier of the existing library item from which the content will be copied.
  # @param content_library_item_copy 
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemCopyResult]
  describe 'copy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Creates a new library item. &lt;p&gt; A new library item is created without any content. After creation, content can be added through the {@link UpdateSession} and {@link File} {@term services}. &lt;p&gt; A library item cannot be created in a subscribed library.
  # @param content_library_item_create 
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Deletes a library item. &lt;p&gt; This {@term operation} will immediately remove the item from the library that owns it. The content of the item will be asynchronously removed from the storage backings. The content deletion can be tracked with a task. In the event that the task fails, an administrator may need to manually remove the files from the storage backing. &lt;p&gt; This {@term operation} cannot be used to delete a library item that is a member of a subscribed library. Removing an item from a subscribed library requires deleting the item from the original published local library and syncing the subscribed library.
  # @param library_item_id Identifier of the library item to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find
  # Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested {@link Item.FindSpec}.
  # @param content_library_item_find 
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemFindResult]
  describe 'find test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns the {@link ItemModel} with the given identifier.
  # @param library_item_id Identifier of the library item to return.
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns the identifiers of all items in the given library.
  # @param library_id Identifier of the library whose items should be returned.
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates the specified properties of a library item. &lt;p&gt; This is an incremental update to the library item. {@term Fields} that are {@term unset} in the update specification are left unchanged. &lt;p&gt; This {@term operation} cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.
  # @param library_item_id Identifier of the library item to update.
  # @param content_library_item_update 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
