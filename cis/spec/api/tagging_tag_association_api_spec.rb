=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# cis

# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::CIS::TaggingTagAssociationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TaggingTagAssociationApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaggingTagAssociationApi' do
    it 'should create an instance of TaggingTagAssociationApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::CIS::TaggingTagAssociationApi)
    end
  end

  # unit tests for attach
  # Attaches the given tag to the input object. The tag needs to meet the cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) criteria in order to be eligible for attachment. If the tag is already attached to the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
  # @param tag_id The identifier of the input tag.
  # @param cis_tagging_tag_association_attach 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'attach test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for attach_multiple_tags_to_object
  # Attaches the given tags to the input object. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege on each tag.
  # @param cis_tagging_tag_association_attach_multiple_tags_to_object 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagAssociationAttachMultipleTagsToObjectResult]
  describe 'attach_multiple_tags_to_object test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for attach_tag_to_multiple_objects
  # Attaches the given tag to the input objects. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
  # @param tag_id The identifier of the input tag.
  # @param cis_tagging_tag_association_attach_tag_to_multiple_objects 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagAssociationAttachTagToMultipleObjectsResult]
  describe 'attach_tag_to_multiple_objects test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for detach
  # Detaches the tag from the given object. If the tag is already removed from the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
  # @param tag_id The identifier of the input tag.
  # @param cis_tagging_tag_association_detach 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'detach test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for detach_multiple_tags_from_object
  # Detaches the given tags from the input object. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege each tag.
  # @param cis_tagging_tag_association_detach_multiple_tags_from_object 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagAssociationDetachMultipleTagsFromObjectResult]
  describe 'detach_multiple_tags_from_object test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for detach_tag_from_multiple_objects
  # Detaches the given tag from the input objects. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
  # @param tag_id The identifier of the input tag.
  # @param cis_tagging_tag_association_detach_tag_from_multiple_objects 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagAssociationDetachTagFromMultipleObjectsResult]
  describe 'detach_tag_from_multiple_objects test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_attachable_tags
  # Fetches the {@term list} of attachable tags for the given object, omitting the tags that have already been attached. Criteria for attachability is calculated based on tagging cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) constructs. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have read privileges.
  # @param cis_tagging_tag_association_list_attachable_tags 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagAssociationListAttachableTagsResult]
  describe 'list_attachable_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_attached_objects
  # Fetches the {@term list} of attached objects for the given tag. To invoke this {@term operation}, you need the read privilege on the input tag. Only those objects for which you have the read privilege will be returned.
  # @param tag_id The identifier of the input tag.
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagAssociationListAttachedObjectsResult]
  describe 'list_attached_objects test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_attached_objects_on_tags
  # Fetches the {@term list} of {@link TagToObjects} describing the input tag identifiers and the objects they are attached to. To invoke this {@term operation}, you need the read privilege on each input tag. The {@link TagToObjects#objectIds} will only contain those objects for which you have the read privilege.
  # @param cis_tagging_tag_association_list_attached_objects_on_tags 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagAssociationListAttachedObjectsOnTagsResult]
  describe 'list_attached_objects_on_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_attached_tags
  # Fetches the {@term list} of tags attached to the given object. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have the read privileges.
  # @param cis_tagging_tag_association_list_attached_tags 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagAssociationListAttachedTagsResult]
  describe 'list_attached_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_attached_tags_on_objects
  # Fetches the {@term list} of {@link ObjectToTags} describing the input object identifiers and the tags attached to each object. To invoke this {@term operation}, you need the read privilege on each input object. The {@link ObjectToTags#tagIds} will only contain those tags for which you have the read privilege.
  # @param cis_tagging_tag_association_list_attached_tags_on_objects 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagAssociationListAttachedTagsOnObjectsResult]
  describe 'list_attached_tags_on_objects test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
