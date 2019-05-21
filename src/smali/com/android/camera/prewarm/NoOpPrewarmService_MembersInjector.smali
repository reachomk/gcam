.class public final Lcom/android/camera/prewarm/NoOpPrewarmService_MembersInjector;
.super Ljava/lang/Object;
.source "NoOpPrewarmService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/android/camera/prewarm/NoOpPrewarmService;",
        ">;"
    }
.end annotation


# instance fields
.field private final prewarmTimeoutProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Timeout;",
            ">;"
        }
    .end annotation
.end field

.field private final usageStatisticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/UsageStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/UsageStatistics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Timeout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/prewarm/NoOpPrewarmService_MembersInjector;->usageStatisticsProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/camera/prewarm/NoOpPrewarmService_MembersInjector;->prewarmTimeoutProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 9
    check-cast p1, Lcom/android/camera/prewarm/NoOpPrewarmService;

    .line 1031
    if-nez p1, :cond_0

    .line 1032
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/android/camera/prewarm/NoOpPrewarmService_MembersInjector;->usageStatisticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/UsageStatistics;

    iput-object v0, p1, Lcom/android/camera/prewarm/NoOpPrewarmService;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 1035
    iget-object v0, p0, Lcom/android/camera/prewarm/NoOpPrewarmService_MembersInjector;->prewarmTimeoutProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Timeout;

    iput-object v0, p1, Lcom/android/camera/prewarm/NoOpPrewarmService;->prewarmTimeout:Lcom/google/android/apps/camera/async/Timeout;

    .line 9
    return-void
.end method
