.class public final Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;
.super Ljava/lang/Object;
.source "ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory.java"

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
.field private final activityLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final fatalActivityErrorHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalActivityErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final fatalErrorBroadcasterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorBroadcaster;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorBroadcaster;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalActivityErrorHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;->fatalErrorBroadcasterProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;->fatalActivityErrorHandlerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;->lifecycleProvider:Ljavax/inject/Provider;

    .line 42
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 12
    .line 1046
    iget-object v0, p0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;->fatalErrorBroadcasterProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/error/FatalErrorBroadcaster;

    iget-object v0, p0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/lifetime/ActivityLifetime;

    iget-object v0, p0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;->fatalActivityErrorHandlerProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/error/FatalActivityErrorHandler;

    iget-object v0, p0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v0, p0, Lcom/android/camera/error/ErrorHandlerModules_ActivityErrorHandlerModule_ProvideFatalActivityErrorHandlerFactory;->lifecycleProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    .line 2043
    new-instance v0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;-><init>(Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/error/FatalErrorBroadcaster;Lcom/android/camera/error/FatalActivityErrorHandler;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;)V

    invoke-static {v0}, Lcom/android/camera/behavior/Behaviors;->of(Ljava/lang/Runnable;)Lcom/android/camera/behavior/Behavior;

    move-result-object v0

    .line 1047
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1046
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/behavior/Behavior;

    .line 12
    return-object v0
.end method
