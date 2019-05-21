.class final Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;
.super Ljava/lang/Object;
.source "FilmstripBottomPanelControllerImpl.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripBottomPanelController;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final controlLayout:Landroid/view/View;

.field private deleteButton:Landroid/widget/ImageButton;

.field private deleteButtonFrame:Landroid/widget/FrameLayout;

.field private detailsButton:Landroid/widget/ImageButton;

.field private detailsButtonFrame:Landroid/widget/FrameLayout;

.field private editButton:Landroid/widget/ImageButton;

.field private editButtonFrame:Landroid/widget/FrameLayout;

.field private final filmstripBottomPanel:Landroid/view/ViewGroup;

.field private final filmstripContentLayout:Landroid/view/ViewGroup;

.field private listener:Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressErrorLayout:Landroid/view/View;

.field private progressErrorText:Landroid/widget/TextView;

.field private progressLayout:Landroid/view/View;

.field private shareButton:Landroid/widget/ImageButton;

.field private shareButtonFrame:Landroid/widget/FrameLayout;

.field private tinyPlanetEnabled:Z

.field private viewButton:Lcom/android/camera/filmstrip/widget/ExternalViewerButton;

.field private viewButtonFrame:Landroid/widget/FrameLayout;

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;Lcom/android/camera/settings/SettingsManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 69
    iget-object v0, p4, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripBottomPanel:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->filmstripBottomPanel:Landroid/view/ViewGroup;

    .line 70
    iget-object v0, p4, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripContentLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->filmstripContentLayout:Landroid/view/ViewGroup;

    .line 74
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->filmstripBottomPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->from(Landroid/view/View;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v1

    .line 75
    const v0, 0x7f1100f1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->controlLayout:Landroid/view/View;

    .line 78
    const v0, 0x7f1100f5

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->editButton:Landroid/widget/ImageButton;

    .line 79
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->editButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$1;-><init>(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->editButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->editButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    .line 95
    const v0, 0x7f1100a2

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->editButtonFrame:Landroid/widget/FrameLayout;

    .line 98
    const v0, 0x7f1100f4

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->viewButton:Lcom/android/camera/filmstrip/widget/ExternalViewerButton;

    .line 99
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->viewButton:Lcom/android/camera/filmstrip/widget/ExternalViewerButton;

    new-instance v2, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$2;-><init>(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f1100f3

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->viewButtonFrame:Landroid/widget/FrameLayout;

    .line 111
    const v0, 0x7f1100f7

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->detailsButton:Landroid/widget/ImageButton;

    .line 112
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->detailsButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$3;-><init>(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f1100f6

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->detailsButtonFrame:Landroid/widget/FrameLayout;

    .line 124
    const v0, 0x7f1100f8

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->deleteButton:Landroid/widget/ImageButton;

    .line 125
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->deleteButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$4;

    invoke-direct {v2, p0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$4;-><init>(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f1100a4

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->deleteButtonFrame:Landroid/widget/FrameLayout;

    .line 137
    const v0, 0x7f1100f2

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->shareButton:Landroid/widget/ImageButton;

    .line 138
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->shareButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$5;

    invoke-direct {v2, p0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$5;-><init>(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f1100a0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->shareButtonFrame:Landroid/widget/FrameLayout;

    .line 150
    const v0, 0x7f1100fb

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->progressLayout:Landroid/view/View;

    .line 151
    const v0, 0x7f1100fc

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    .line 152
    const v0, 0x7f1100fd

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->progressBar:Landroid/widget/ProgressBar;

    .line 153
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->progressLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const v0, 0x7f1100fa

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->progressErrorText:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f1100f9

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->progressErrorLayout:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->progressErrorLayout:Landroid/view/View;

    new-instance v1, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$6;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl$6;-><init>(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const-string v0, "default_scope"

    const-string v1, "pref_should_show_refocus_viewer_cling"

    invoke-virtual {p5, v0, v1}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const v0, 0x7f040029

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/Cling;

    .line 174
    const v1, 0x7f0a01d3

    .line 175
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/camera/widget/Cling;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v1, 0x7f0c0198

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 179
    iget-object v2, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->filmstripContentLayout:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 180
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->viewButton:Lcom/android/camera/filmstrip/widget/ExternalViewerButton;

    sget-object v2, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->REFOCUS:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->setClingForViewer(Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;Lcom/android/camera/widget/Cling;)V

    .line 182
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->tinyPlanetEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->listener:Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;

    return-object v0
.end method


# virtual methods
.method public final hideControls()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->controlLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    return-void
.end method

.method public final hideProgressError()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->progressErrorLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    return-void
.end method

.method public final removeRefocusCling()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->viewButton:Lcom/android/camera/filmstrip/widget/ExternalViewerButton;

    sget-object v1, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->REFOCUS:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->getClingForViewer(Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;)Lcom/android/camera/widget/Cling;

    move-result-object v0

    .line 332
    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->viewButton:Lcom/android/camera/filmstrip/widget/ExternalViewerButton;

    sget-object v2, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->REFOCUS:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    invoke-virtual {v1, v2}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->clearClingForViewer(Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;)V

    .line 338
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/Cling;->setVisibility(I)V

    .line 339
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->filmstripContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final setDeleteButtonVisibility(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 223
    iget-object v3, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->deleteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->deleteButtonFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 225
    return-void

    :cond_0
    move v0, v2

    .line 223
    goto :goto_0

    :cond_1
    move v1, v2

    .line 224
    goto :goto_1
.end method

.method public final setDetailsButtonVisibility(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 229
    iget-object v3, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->detailsButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->detailsButtonFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    return-void

    :cond_0
    move v0, v2

    .line 229
    goto :goto_0

    :cond_1
    move v1, v2

    .line 230
    goto :goto_1
.end method

.method public final setEditButtonVisibility(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 200
    iget-object v3, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->editButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->editButtonFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 202
    return-void

    :cond_0
    move v0, v2

    .line 200
    goto :goto_0

    :cond_1
    move v1, v2

    .line 201
    goto :goto_1
.end method

.method public final setListener(Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->listener:Lcom/android/camera/filmstrip/FilmstripBottomPanelController$Listener;

    .line 187
    return-void
.end method

.method public final setShareButtonVisibility(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 235
    iget-object v3, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->shareButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->shareButtonFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    return-void

    :cond_0
    move v0, v2

    .line 235
    goto :goto_0

    :cond_1
    move v1, v2

    .line 236
    goto :goto_1
.end method

.method public final setShareEnabled(Z)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->shareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 242
    return-void
.end method

.method public final setTinyPlanetEnabled(Z)V
    .locals 0

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->tinyPlanetEnabled:Z

    .line 219
    return-void
.end method

.method public final setViewerButtonState(Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->viewButton:Lcom/android/camera/filmstrip/widget/ExternalViewerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->setButtonType(Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;)V

    .line 209
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->INVISIBLE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    if-ne p1, v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->viewButtonFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->viewButtonFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setVisible(Z)V
    .locals 2

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->filmstripBottomPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->filmstripBottomPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public final showControls()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->controlLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    return-void
.end method

.method public final showProgressError(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->hideControls()V

    .line 257
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->progressErrorLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;->progressErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method
