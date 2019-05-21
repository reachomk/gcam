.class public final Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;
.super Ljava/lang/Object;
.source "ViewfinderImpl_Factory.java"

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
.field private final cameraUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;"
        }
    .end annotation
.end field

.field private final captureLayoutHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final instrumentationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private final logFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final mainActivityLayoutProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/MainActivityLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final orientationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;"
        }
    .end annotation
.end field

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/Instrumentation;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/MainActivityLayout;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->instrumentationProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->mainActivityLayoutProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 52
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 14
    .line 1056
    new-instance v0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/Logger$Factory;

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 1058
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CaptureLayoutHelper;

    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/burst/OrientationLockController;

    iget-object v4, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->instrumentationProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/stats/Instrumentation;

    iget-object v5, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->mainActivityLayoutProvider:Ljavax/inject/Provider;

    .line 1061
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/MainActivityLayout;

    iget-object v6, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/views/CameraUi;

    iget-object v7, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/debug/trace/Trace;

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/stats/Instrumentation;Lcom/android/camera/ui/MainActivityLayout;Lcom/android/camera/ui/views/CameraUi;Lcom/android/camera/debug/trace/Trace;)V

    .line 14
    return-object v0
.end method
