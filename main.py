import pygame

pygame.init()
pygame.display.set_caption("VimSnake")
screen = pygame.display.set_mode((1360, 720))
clock = pygame.time.Clock()
running = True

while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    screen.fill((34, 139, 34))

    pygame.display.flip()

    clock.tick(60)

pygame.quit()
