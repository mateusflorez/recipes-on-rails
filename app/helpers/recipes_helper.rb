module RecipesHelper

  def formata_caloria(recipe)
    if recipe.light?
      content_tag(:strong, "Light (less than 100 calories)")
    else
      recipe.calories
    end
  end

  def imagem(recipe)
    if recipe.poster.blank?
      image_tag('notfound.png', size: '170')
    else
      image_tag(recipe.poster, size: '170')
    end
  end
end
