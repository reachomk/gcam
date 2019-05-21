.class public Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;
.super Ljava/lang/Object;
.source "ViewfinderModule.java"


# instance fields
.field public final filmstripBadge:Landroid/widget/LinearLayout;

.field public final filmstripBadgeIcon:Landroid/widget/ImageView;

.field public final filmstripBadgeProgressBar:Landroid/widget/ProgressBar;

.field public final filmstripBadgeText:Landroid/widget/TextView;

.field public final filmstripBottomBarGradient:Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;

.field public final filmstripBottomPanel:Landroid/widget/LinearLayout;

.field public final filmstripContentLayout:Landroid/widget/FrameLayout;

.field public final filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

.field public final filmstripTopBarGradient:Landroid/view/View;

.field public final filmstripUndoDeleteButton:Landroid/view/View;

.field public final filmstripUndoDeletionBar:Landroid/view/ViewGroup;

.field public final filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

.field public final noPhotosIndicator:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;)V
    .locals 1

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    const v0, 0x7f1100c9

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    .line 1055
    const v0, 0x7f1100cc

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/widget/FilmstripView;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

    .line 1056
    const v0, 0x7f1100cb

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripContentLayout:Landroid/widget/FrameLayout;

    .line 1057
    const v0, 0x7f1100f0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripBottomPanel:Landroid/widget/LinearLayout;

    .line 1058
    const v0, 0x7f1100d2

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripBadge:Landroid/widget/LinearLayout;

    .line 1059
    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripBadgeIcon:Landroid/widget/ImageView;

    .line 1060
    const v0, 0x7f1100d5

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripBadgeText:Landroid/widget/TextView;

    .line 1061
    const v0, 0x7f1100d3

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripBadgeProgressBar:Landroid/widget/ProgressBar;

    .line 1062
    const v0, 0x7f110180

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripUndoDeletionBar:Landroid/view/ViewGroup;

    .line 1063
    const v0, 0x7f110181

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripUndoDeleteButton:Landroid/view/View;

    .line 1064
    const v0, 0x7f1100d0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->noPhotosIndicator:Landroid/widget/TextView;

    .line 1065
    const v0, 0x7f1100cd

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripTopBarGradient:Landroid/view/View;

    .line 1066
    const v0, 0x7f110100

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;

    iput-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripBottomBarGradient:Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;

    .line 1067
    return-void
.end method

.method public static createFrom$51662RJ4E9NMIP1FEPKMATPFAPKMATPR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TQMIBQ3C5MMASJ18PKMORBJEHP6IS2LD4TG____(Landroid/view/View;)Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;
    .locals 2

    .prologue
    .line 1026
    new-instance v0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    invoke-static {p0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->from(Landroid/view/View;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;-><init>(Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;)V

    return-object v0
.end method
