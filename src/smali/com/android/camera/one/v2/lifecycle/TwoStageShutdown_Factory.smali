.class public final Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;
.super Ljava/lang/Object;
.source "TwoStageShutdown_Factory.java"

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
.field private final shutdownTasksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;>;"
        }
    .end annotation
.end field

.field private final twoStageShutdownMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;->twoStageShutdownMembersInjector:Ldagger/MembersInjector;

    .line 22
    iput-object p2, p0, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;->shutdownTasksProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;>;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 10
    .line 1027
    iget-object v1, p0, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;->twoStageShutdownMembersInjector:Ldagger/MembersInjector;

    new-instance v2, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;

    iget-object v0, p0, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown_Factory;->shutdownTasksProvider:Ljavax/inject/Provider;

    .line 1028
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;-><init>(Ljava/util/Set;)V

    .line 1027
    invoke-static {v1, v2}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;

    .line 10
    return-object v0
.end method
