.class public final Lcom/android/camera/ui/wirers/ZoomUiWirer;
.super Ljava/lang/Object;
.source "ZoomUiWirer.java"

# interfaces
.implements Lcom/android/camera/ui/wirers/UiWirer;


# instance fields
.field private final activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

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

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final previewAreaRect$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/MainThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/ui/wirers/ZoomUiWirer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/camera/ui/wirers/ZoomUiWirer;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 31
    iput-object p3, p0, Lcom/android/camera/ui/wirers/ZoomUiWirer;->previewAreaRect$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 32
    iput-object p4, p0, Lcom/android/camera/ui/wirers/ZoomUiWirer;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 33
    return-void
.end method


# virtual methods
.method public final wire()V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/wirers/ZoomUiWirer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    const v1, 0x7f1100bd

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewOverlay;

    .line 39
    iget-object v1, p0, Lcom/android/camera/ui/wirers/ZoomUiWirer;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 40
    invoke-interface {v1}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/wirers/ZoomUiWirer;->previewAreaRect$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    new-instance v3, Lcom/android/camera/ui/wirers/ZoomUiWirer$1;

    invoke-direct {v3, v0}, Lcom/android/camera/ui/wirers/ZoomUiWirer$1;-><init>(Lcom/android/camera/ui/PreviewOverlay;)V

    iget-object v0, p0, Lcom/android/camera/ui/wirers/ZoomUiWirer;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 42
    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 41
    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 50
    return-void
.end method
