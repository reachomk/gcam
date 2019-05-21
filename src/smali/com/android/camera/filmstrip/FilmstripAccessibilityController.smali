.class public final Lcom/android/camera/filmstrip/FilmstripAccessibilityController;
.super Ljava/lang/Object;
.source "FilmstripAccessibilityController.java"


# instance fields
.field private final filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

.field private final filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

.field private final lastFilmStripItemButton:Landroid/widget/Button;

.field private final lastFilmStripItemListener:Landroid/view/View$OnClickListener;

.field private final nextFilmStripItemButton:Landroid/widget/Button;

.field private final nextFilmStripItemListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/filmstrip/widget/FilmstripView;Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/FilmstripAccessibilityController$1;-><init>(Lcom/android/camera/filmstrip/FilmstripAccessibilityController;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->lastFilmStripItemListener:Landroid/view/View$OnClickListener;

    .line 33
    new-instance v0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/FilmstripAccessibilityController$2;-><init>(Lcom/android/camera/filmstrip/FilmstripAccessibilityController;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->nextFilmStripItemListener:Landroid/view/View$OnClickListener;

    .line 47
    iput-object p2, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

    .line 48
    iput-object p3, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    .line 50
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->from(Landroid/view/View;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v1

    .line 51
    const v0, 0x7f1100cf

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->lastFilmStripItemButton:Landroid/widget/Button;

    .line 52
    const v0, 0x7f1100d1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->nextFilmStripItemButton:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->lastFilmStripItemButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->lastFilmStripItemListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->nextFilmStripItemButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->nextFilmStripItemListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/filmstrip/FilmstripAccessibilityController;)Lcom/android/camera/filmstrip/widget/FilmstripView;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

    return-object v0
.end method


# virtual methods
.method public final hideFilmstripItemUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 70
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->lastFilmStripItemButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->nextFilmStripItemButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public final showFilmstripItemUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->lastFilmStripItemButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->nextFilmStripItemButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    return-void
.end method
