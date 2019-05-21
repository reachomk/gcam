.class public final Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;
.super Ljava/lang/Object;
.source "ViewMagnet.java"


# instance fields
.field private ironView:Landroid/view/View;

.field private final magnetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->magnetView:Landroid/view/View;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->ironView:Landroid/view/View;

    .line 33
    return-void
.end method

.method private final updateX()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->ironView:Landroid/view/View;

    .line 56
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    new-array v1, v2, [I

    .line 60
    new-array v2, v2, [I

    .line 61
    iget-object v3, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->magnetView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 64
    aget v2, v2, v4

    aget v1, v1, v4

    sub-int v1, v2, v1

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    int-to-float v1, v1

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method


# virtual methods
.method public final getIronView()Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->ironView:Landroid/view/View;

    return-object v0
.end method

.method public final getMagnetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->magnetView:Landroid/view/View;

    return-object v0
.end method

.method public final setIronView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->ironView:Landroid/view/View;

    .line 43
    return-void
.end method

.method public final setTranslationX(F)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->magnetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->updateX()V

    .line 103
    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->magnetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->ironView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->ironView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public final update()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->updateX()V

    .line 1069
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->ironView:Landroid/view/View;

    .line 1070
    if-eqz v0, :cond_0

    .line 1073
    new-array v1, v2, [I

    .line 1074
    new-array v2, v2, [I

    .line 1075
    iget-object v3, p0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->magnetView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1076
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1078
    aget v2, v2, v4

    aget v1, v1, v4

    sub-int v1, v2, v1

    .line 1079
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float v1, v1

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 52
    :cond_0
    return-void
.end method
