.class public final Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetTaskFactory;
.super Ljava/lang/Object;
.source "Nexus6TorchBugWorkaround_TorchResetTaskFactory.java"

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
.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
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

.field private final torchResetProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround$TorchResetCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround$TorchResetCommand;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetTaskFactory;->executorProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetTaskFactory;->torchResetProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetTaskFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround$TorchResetCommand;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetTaskFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetTaskFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1033
    iget-object v0, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetTaskFactory;->executorProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iget-object v1, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetTaskFactory;->torchResetProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround$TorchResetCommand;

    iget-object v2, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround_TorchResetTaskFactory;->apiHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/ApiHelper;

    .line 1036
    invoke-virtual {v2}, Lcom/android/camera/util/ApiHelper;->isNexus6()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    invoke-static {v1, v0}, Lcom/android/camera/one/v2/lifecycle/StartTasks;->forCommand(Lcom/android/camera/one/v2/command/CameraCommand;Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/android/camera/one/v2/lifecycle/StartTask;

    move-result-object v0

    .line 1034
    :goto_0
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1033
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/lifecycle/StartTask;

    .line 11
    return-object v0

    .line 1039
    :cond_0
    invoke-static {}, Lcom/android/camera/one/v2/lifecycle/StartTasks;->noop()Lcom/android/camera/one/v2/lifecycle/StartTask;

    move-result-object v0

    goto :goto_0
.end method
