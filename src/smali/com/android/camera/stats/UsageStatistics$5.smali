.class Lcom/android/camera/stats/UsageStatistics$5;
.super Ljava/lang/Object;
.source "UsageStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/UsageStatistics;->submitCaptureDoneEvent(Lcom/android/camera/stats/CaptureDoneEventBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/stats/UsageStatistics;

.field final synthetic val$builder:Lcom/android/camera/stats/CaptureDoneEventBuilder;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/UsageStatistics;Lcom/android/camera/stats/CaptureDoneEventBuilder;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/camera/stats/UsageStatistics$5;->this$0:Lcom/android/camera/stats/UsageStatistics;

    iput-object p2, p0, Lcom/android/camera/stats/UsageStatistics$5;->val$builder:Lcom/android/camera/stats/CaptureDoneEventBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics$5;->this$0:Lcom/android/camera/stats/UsageStatistics;

    iget-object v1, p0, Lcom/android/camera/stats/UsageStatistics$5;->val$builder:Lcom/android/camera/stats/CaptureDoneEventBuilder;

    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics$5;->this$0:Lcom/android/camera/stats/UsageStatistics;

    invoke-static {v2}, Lcom/android/camera/stats/UsageStatistics;->access$000(Lcom/android/camera/stats/UsageStatistics;)Lcom/android/camera/stats/AuthorStatsHelper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setAuthorStats(Lcom/android/camera/stats/AuthorStatsHelper;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->build()Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->access$400(Lcom/android/camera/stats/UsageStatistics;Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V

    .line 556
    return-void
.end method
