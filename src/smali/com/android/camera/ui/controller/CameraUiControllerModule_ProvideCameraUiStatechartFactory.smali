.class public final Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraUiStatechartFactory;
.super Ljava/lang/Object;
.source "CameraUiControllerModule_ProvideCameraUiStatechartFactory.java"

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
.field private final captureStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CaptureStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final filmstripTransitioningStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/ui/controller/CameraUiControllerModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/CameraUiControllerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CaptureStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraUiStatechartFactory;->module:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 25
    iput-object p2, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraUiStatechartFactory;->captureStatechartProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraUiStatechartFactory;->filmstripTransitioningStatechartProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 9
    .line 1032
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraUiStatechartFactory;->captureStatechartProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/CaptureStatechart;

    iget-object v1, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraUiStatechartFactory;->filmstripTransitioningStatechartProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;

    .line 1120
    new-instance v2, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/ui/controller/GeneratedCameraUiStatechart;-><init>(Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;)V

    .line 1033
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1032
    invoke-static {v2, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/CameraUiStatechart;

    .line 9
    return-object v0
.end method
