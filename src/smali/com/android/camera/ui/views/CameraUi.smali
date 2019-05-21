.class public final Lcom/android/camera/ui/views/CameraUi;
.super Ljava/lang/Object;
.source "CameraUi.java"


# instance fields
.field public final bottomBar:Lcom/android/camera/ui/BottomBar;

.field final cameraActivityUiOverlayStub:Landroid/view/ViewStub;

.field final cameraActivityUiStub:Landroid/view/ViewStub;

.field private final checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

.field public final mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

.field public final roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

.field public final shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

.field public final stickyBottomCaptureLayout:Lcom/android/camera/ui/StickyBottomCaptureLayout;

.field public final viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

.field public final viewfinderFrame:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    .line 49
    const v0, 0x7f110086

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MainActivityLayout;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

    .line 50
    const v0, 0x7f110087

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->cameraActivityUiStub:Landroid/view/ViewStub;

    .line 51
    const v0, 0x7f11008a

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->cameraActivityUiOverlayStub:Landroid/view/ViewStub;

    .line 52
    const v0, 0x7f110192

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->viewfinderFrame:Landroid/widget/FrameLayout;

    .line 54
    const v0, 0x7f11009a

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/RoundedThumbnailView;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 55
    const v0, 0x7f11016c

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomBar;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->bottomBar:Lcom/android/camera/ui/BottomBar;

    .line 56
    const v0, 0x7f110091

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    .line 58
    const v0, 0x7f110193

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    .line 59
    const v0, 0x7f11016b

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StickyBottomCaptureLayout;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->stickyBottomCaptureLayout:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .line 60
    const v0, 0x7f110092

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShutterButtonHolder;

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    .line 61
    return-void
.end method

.method public static createFrom(Lcom/google/android/apps/camera/util/ui/FindViewById;)Lcom/android/camera/ui/views/CameraUi;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/android/camera/ui/views/CameraUi;

    invoke-static {p0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->from(Lcom/google/android/apps/camera/util/ui/FindViewById;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/views/CameraUi;-><init>(Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;)V

    return-object v0
.end method


# virtual methods
.method public final checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    return-object v0
.end method

.method public final getCameraSwitchButton()Lcom/android/camera/widget/CameraSwitchButton;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    const v1, 0x7f110097

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/CameraSwitchButton;

    return-object v0
.end method

.method public final getCaptureAnimationOverlay()Lcom/android/camera/ui/CaptureAnimationOverlay;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    const v1, 0x7f1100b6

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CaptureAnimationOverlay;

    return-object v0
.end method

.method public final getPhotoVideoButton()Lcom/android/camera/ui/PrimaryShutterButton;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    const v1, 0x7f110144

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PrimaryShutterButton;

    return-object v0
.end method

.method public final getShutterButtonHolder()Lcom/android/camera/ui/ShutterButtonHolder;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    const v1, 0x7f110092

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShutterButtonHolder;

    return-object v0
.end method

.method public final getShutterCancelButton()Lcom/android/camera/widget/DarkLightImageButton;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUi;->checkedView:Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    const v1, 0x7f110094

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/DarkLightImageButton;

    return-object v0
.end method
