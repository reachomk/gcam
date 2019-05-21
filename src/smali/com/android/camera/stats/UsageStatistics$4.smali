.class Lcom/android/camera/stats/UsageStatistics$4;
.super Ljava/lang/Object;
.source "UsageStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/UsageStatistics;->foregrounded(IIIZZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/stats/UsageStatistics;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/UsageStatistics;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/camera/stats/UsageStatistics$4;->this$0:Lcom/android/camera/stats/UsageStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics$4;->this$0:Lcom/android/camera/stats/UsageStatistics;

    invoke-static {v0}, Lcom/android/camera/stats/UsageStatistics;->access$000(Lcom/android/camera/stats/UsageStatistics;)Lcom/android/camera/stats/AuthorStatsHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/AuthorStatsHelper;->scanMediaStore()V

    .line 370
    return-void
.end method
