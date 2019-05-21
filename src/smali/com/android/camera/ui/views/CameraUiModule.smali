.class public final Lcom/android/camera/ui/views/CameraUiModule;
.super Ljava/lang/Object;
.source "CameraUiModule.java"


# instance fields
.field private final actionBar:Landroid/app/ActionBar;

.field private final cameraUi:Lcom/android/camera/ui/views/CameraUi;

.field private final layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/app/ActionBar;Landroid/view/LayoutInflater;Lcom/android/camera/ui/views/CameraUi;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/ui/views/CameraUiModule;->actionBar:Landroid/app/ActionBar;

    .line 27
    iput-object p2, p0, Lcom/android/camera/ui/views/CameraUiModule;->layoutInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p3, p0, Lcom/android/camera/ui/views/CameraUiModule;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    .line 29
    return-void
.end method


# virtual methods
.method public final inflateCameraActivityUi(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/performance/MetricBuilder;)Lcom/android/camera/ui/views/CameraActivityUi;
    .locals 4

    .prologue
    .line 61
    const-string v0, "CameraActivityUi#mainInflate"

    invoke-interface {p1, v0}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 62
    const-string v0, "CameraActivityUi#mainInflate"

    const-wide/16 v2, 0x96

    invoke-virtual {p2, v0, v2, v3}, Lcom/android/camera/debug/performance/MetricBuilder;->startMetric(Ljava/lang/String;J)Lcom/android/camera/debug/performance/Metric;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/camera/ui/views/CameraUiModule;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    iget-object v1, v1, Lcom/android/camera/ui/views/CameraUi;->cameraActivityUiStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/android/camera/ui/views/CameraUiModule;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    iget-object v1, v1, Lcom/android/camera/ui/views/CameraUi;->cameraActivityUiOverlayStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/views/CameraUiModule;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    invoke-virtual {v1}, Lcom/android/camera/ui/views/CameraUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/views/CameraActivityUi;->createFrom(Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;)Lcom/android/camera/ui/views/CameraActivityUi;

    move-result-object v1

    .line 68
    invoke-interface {p1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 69
    invoke-interface {v0}, Lcom/android/camera/debug/performance/Metric;->stop()V

    .line 70
    return-object v1
.end method

.method public final provideActivityLayoutInflator()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUiModule;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final provideCameraActivityActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUiModule;->actionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final provideCameraUi()Lcom/android/camera/ui/views/CameraUi;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUiModule;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    return-object v0
.end method

.method public final provideCheckedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUiModule;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    return-object v0
.end method

.method public final provideMainActivityUi()Lcom/android/camera/ui/MainActivityLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUiModule;->cameraUi:Lcom/android/camera/ui/views/CameraUi;

    iget-object v0, v0, Lcom/android/camera/ui/views/CameraUi;->mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

    return-object v0
.end method
