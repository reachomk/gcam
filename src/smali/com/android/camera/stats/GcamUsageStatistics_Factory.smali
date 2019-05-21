.class public final Lcom/android/camera/stats/GcamUsageStatistics_Factory;
.super Ljava/lang/Object;
.source "GcamUsageStatistics_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
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
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/UsageStatistics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/camera/stats/GcamUsageStatistics_Factory;->usageStatisticsProvider:Ljavax/inject/Provider;

    .line 14
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/UsageStatistics;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/android/camera/stats/GcamUsageStatistics_Factory;

    invoke-direct {v0, p0}, Lcom/android/camera/stats/GcamUsageStatistics_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final get()Lcom/android/camera/stats/GcamUsageStatistics;
    .locals 2

    .prologue
    .line 18
    new-instance v1, Lcom/android/camera/stats/GcamUsageStatistics;

    iget-object v0, p0, Lcom/android/camera/stats/GcamUsageStatistics_Factory;->usageStatisticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/UsageStatistics;

    invoke-direct {v1, v0}, Lcom/android/camera/stats/GcamUsageStatistics;-><init>(Lcom/android/camera/stats/UsageStatistics;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/camera/stats/GcamUsageStatistics_Factory;->get()Lcom/android/camera/stats/GcamUsageStatistics;

    move-result-object v0

    return-object v0
.end method
