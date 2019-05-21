.class public final Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;
.super Ljava/lang/Object;
.source "CommandExecutorModule_ProvideCommandExecutorFactory.java"

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
.field private final delayedLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final executorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
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

.field private final logProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
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
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->delayedLifetimeProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->executorServiceProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->logProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->traceProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 47
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 13
    .line 1051
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->delayedLifetimeProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v5, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->executorServiceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->logProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/Logger$Factory;

    iget-object v3, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->traceProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/debug/trace/Trace;

    iget-object v4, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule_ProvideCommandExecutorFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1058
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/async/MainThread;

    .line 2039
    new-instance v6, Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/async/MainThread;Ljavax/inject/Provider;)V

    .line 2043
    new-instance v2, Lcom/android/camera/one/v2/command/CommandExecutorModule$1;

    invoke-direct {v2, v6}, Lcom/android/camera/one/v2/command/CommandExecutorModule$1;-><init>(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 2051
    new-instance v0, Lcom/android/camera/one/v2/command/CommandExecutorModule$2;

    invoke-direct {v0, v6}, Lcom/android/camera/one/v2/command/CommandExecutorModule$2;-><init>(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)V

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1052
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1051
    invoke-static {v6, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    .line 13
    return-object v0
.end method
