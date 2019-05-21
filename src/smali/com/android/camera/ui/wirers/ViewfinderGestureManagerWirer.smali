.class public final Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;
.super Ljava/lang/Object;
.source "ViewfinderGestureManagerWirer.java"

# interfaces
.implements Lcom/android/camera/ui/wirers/UiWirer;


# instance fields
.field private final cameraActivityUi:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private final previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

.field private final previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Landroid/content/Context;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->context:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    .line 50
    iput-object p4, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    .line 51
    iput-object p5, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 52
    return-void
.end method


# virtual methods
.method public final wire()V
    .locals 9

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->cameraActivityUi:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v1

    .line 57
    const v0, 0x7f1100bd

    .line 58
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/camera/ui/PreviewOverlay;

    .line 59
    const v0, 0x7f1100c4

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    .line 61
    new-instance v0, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;

    iget-object v3, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->context:Landroid/content/Context;

    .line 1138
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1139
    new-instance v1, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$5;

    invoke-direct {v1, v3, v4}, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$5;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2079
    invoke-virtual {v2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->getPreviewSwipeGestureStateManager()Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    move-result-object v3

    .line 2080
    new-instance v2, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$2;

    invoke-direct {v2, v3}, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$2;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)V

    .line 63
    iget-object v4, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 2105
    new-instance v3, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$3;

    invoke-direct {v3, v4}, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$3;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V

    .line 64
    iget-object v4, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    iget-object v6, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    iget-object v8, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    .line 2125
    new-instance v5, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$4;

    invoke-direct {v5, v6, v8}, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$4;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;)V

    .line 67
    invoke-virtual {v7}, Lcom/android/camera/ui/PreviewOverlay;->getScaleListener()Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;-><init>(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$GestureDetectorFactory;Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$HorizontalScrollListener;Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$VerticalScrollListener;Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;)V

    .line 68
    new-instance v1, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$1;

    invoke-direct {v1, v0}, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$1;-><init>(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;)V

    invoke-virtual {v7, v1}, Lcom/android/camera/ui/PreviewOverlay;->setOnPreviewTouchedListener(Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;)V

    .line 74
    return-void
.end method
