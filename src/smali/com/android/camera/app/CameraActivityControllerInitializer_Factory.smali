.class public final Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;
.super Ljava/lang/Object;
.source "CameraActivityControllerInitializer_Factory.java"

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
.field private final activityLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivityControllerInitializerMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/app/CameraActivityControllerInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/AppController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
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
.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/app/CameraActivityControllerInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/AppController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;->cameraActivityControllerInitializerMembersInjector:Ldagger/MembersInjector;

    .line 37
    iput-object p2, p0, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;->cameraActivityControllerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 44
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 12
    .line 1048
    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;->cameraActivityControllerInitializerMembersInjector:Ldagger/MembersInjector;

    new-instance v4, Lcom/android/camera/app/CameraActivityControllerInitializer;

    iget-object v5, p0, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;->cameraActivityControllerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerInitializer_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/trace/Trace;

    invoke-direct {v4, v5, v0, v1, v2}, Lcom/android/camera/app/CameraActivityControllerInitializer;-><init>(Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/debug/trace/Trace;)V

    .line 1048
    invoke-static {v3, v4}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/CameraActivityControllerInitializer;

    .line 12
    return-object v0
.end method
