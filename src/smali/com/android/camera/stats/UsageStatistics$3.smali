.class Lcom/android/camera/stats/UsageStatistics$3;
.super Ljava/lang/Object;
.source "UsageStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/stats/UsageStatistics;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/UsageStatistics;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/camera/stats/UsageStatistics$3;->this$0:Lcom/android/camera/stats/UsageStatistics;

    iput-object p2, p0, Lcom/android/camera/stats/UsageStatistics$3;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics$3;->this$0:Lcom/android/camera/stats/UsageStatistics;

    invoke-static {v0}, Lcom/android/camera/stats/UsageStatistics;->access$000(Lcom/android/camera/stats/UsageStatistics;)Lcom/android/camera/stats/AuthorStatsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/stats/UsageStatistics$3;->val$fileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/camera/stats/AuthorStatsHelper;->itemDeleted(Ljava/lang/String;)V

    .line 270
    return-void
.end method
