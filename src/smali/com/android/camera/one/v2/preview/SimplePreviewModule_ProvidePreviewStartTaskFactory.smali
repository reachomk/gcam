.class public final Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;
.super Ljava/lang/Object;
.source "SimplePreviewModule_ProvidePreviewStartTaskFactory.java"

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
.field private final deferredSessionFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final futureRequestTemplateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final previewCommandProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/preview/PreviewCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/preview/PreviewCommand;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->executorProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->previewCommandProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->futureRequestTemplateProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->deferredSessionFutureProvider:Ljavax/inject/Provider;

    .line 42
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/preview/PreviewCommand;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 13
    .line 1046
    iget-object v0, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->executorProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iget-object v2, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->previewCommandProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/preview/PreviewCommand;

    iget-object v3, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->futureRequestTemplateProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v4, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule_ProvidePreviewStartTaskFactory;->deferredSessionFutureProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2043
    new-instance v5, Lcom/android/camera/one/v2/command/RunnableCameraCommand;

    invoke-direct {v5, v1, v2}, Lcom/android/camera/one/v2/command/RunnableCameraCommand;-><init>(Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/one/v2/command/CameraCommand;)V

    .line 2047
    new-instance v6, Lcom/android/camera/one/v2/preview/SimplePreviewModule$1;

    invoke-direct {v6, v5, v0}, Lcom/android/camera/one/v2/preview/SimplePreviewModule$1;-><init>(Ljava/lang/Runnable;Lcom/google/android/apps/camera/async/Lifetime;)V

    invoke-static {v3, v6}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 2066
    new-instance v0, Lcom/android/camera/one/v2/preview/SimplePreviewModule$2;

    invoke-direct {v0, v5}, Lcom/android/camera/one/v2/preview/SimplePreviewModule$2;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v4, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 2076
    invoke-static {v2, v1}, Lcom/android/camera/one/v2/lifecycle/StartTasks;->forCommand(Lcom/android/camera/one/v2/command/CameraCommand;Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/one/v2/lifecycle/StartTask;

    move-result-object v0

    .line 1047
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1046
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/lifecycle/StartTask;

    .line 13
    return-object v0
.end method
