.class public final Lcom/android/camera/ui/views/CameraActivityUi;
.super Ljava/lang/Object;
.source "CameraActivityUi.java"


# instance fields
.field public final accessibilityAffordances:Landroid/view/View;

.field private final binder:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

.field public final cameraRootView:Landroid/widget/FrameLayout;

.field public final cameraRootViewOverlay:Landroid/widget/FrameLayout;

.field public final controlsLayout:Landroid/widget/FrameLayout;

.field public final filmstripContentLayout:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/ui/views/CameraActivityUi;->binder:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    .line 32
    const v0, 0x7f1100b0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraActivityUi;->cameraRootView:Landroid/widget/FrameLayout;

    .line 33
    const v0, 0x7f1100bb

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraActivityUi;->controlsLayout:Landroid/widget/FrameLayout;

    .line 35
    const v0, 0x7f1100d8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraActivityUi;->cameraRootViewOverlay:Landroid/widget/FrameLayout;

    .line 36
    const v0, 0x7f1100cb

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraActivityUi;->filmstripContentLayout:Landroid/widget/FrameLayout;

    .line 37
    const v0, 0x7f110081

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraActivityUi;->accessibilityAffordances:Landroid/view/View;

    .line 38
    return-void
.end method

.method public static createFrom(Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;)Lcom/android/camera/ui/views/CameraActivityUi;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/views/CameraActivityUi;-><init>(Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;)V

    return-object v0
.end method


# virtual methods
.method public final checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraActivityUi;->binder:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    return-object v0
.end method
