.class Lcom/android/camera/stats/UsageStatistics$1;
.super Ljava/lang/Object;
.source "UsageStatistics.java"

# interfaces
.implements Lcom/android/camera/stats/BurstCaptureReportAccumulator$SmartBurstReportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/stats/UsageStatistics;
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
    .line 120
    iput-object p1, p0, Lcom/android/camera/stats/UsageStatistics$1;->this$0:Lcom/android/camera/stats/UsageStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendReport(Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics$1;->this$0:Lcom/android/camera/stats/UsageStatistics;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/camera/stats/UsageStatistics;->captureComputeEvent(ILcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;)V

    .line 124
    return-void
.end method
