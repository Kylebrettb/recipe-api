# serializers/post_serializer.rb
class RecipeSerializer
  def self.serialize(recipe)

    # start with the open brace to create a valid JSON object
    serialized_recipe = '{'

    serialized_recipe += '"id": ' + recipe.id.to_s + ', '
    serialized_recipe += '"title": "' + recipe.title + '", '
    serialized_recipe += '"description": "' + recipe.description + '", '

    # the author association can also be represented in JSON
    serialized_recipe += '"creator": {'
    serialized_recipe += '"name": "' + recipe.creator.name + '"}'

    # and end with the close brace
    serialized_recipe += '}'
  end
end
