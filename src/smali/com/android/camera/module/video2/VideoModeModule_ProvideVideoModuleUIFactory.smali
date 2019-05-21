.class public final Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;
.super Ljava/lang/Object;
.source "VideoModeModule_ProvideVideoModuleUIFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final cameraActivityUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final captureIndicatorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final photoVideoStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoVideoStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final storageDialogBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageDialogBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoVideoStatechart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->captureIndicatorControllerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->layoutInflaterProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->storageDialogBuilderProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->photoVideoStatechartProvider:Ljavax/inject/Provider;

    .line 47
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 14
    .line 1051
    iget-object v0, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/views/CameraActivityUi;

    iget-object v0, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->captureIndicatorControllerProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    iget-object v0, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->layoutInflaterProvider:Ljavax/inject/Provider;

    .line 1055
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->storageDialogBuilderProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/storage/StorageDialogBuilder;

    iget-object v0, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoModuleUIFactory;->photoVideoStatechartProvider:Ljavax/inject/Provider;

    .line 1058
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    .line 1113
    new-instance v0, Lcom/android/camera/module/video2/Video2ModuleUI;

    iget-object v2, v2, Lcom/android/camera/ui/views/CameraActivityUi;->cameraRootView:Landroid/widget/FrameLayout;

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/video2/Video2ModuleUI;-><init>(Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;Landroid/view/View;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/camera/storage/StorageDialogBuilder;Lcom/android/camera/ui/controller/VideoRecordingState;)V

    .line 1052
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1051
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/video2/Video2ModuleUI;

    .line 14
    return-object v0
.end method
