.class Lcom/android/camera/stats/UsageStatistics$ViewRecord;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/stats/UsageStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewRecord"
.end annotation


# instance fields
.field public modifiedTimeMillis:J

.field public zoom:F

.field public zoomTimeMillis:J


# direct methods
.method public constructor <init>(JFJ)V
    .locals 0

    .prologue
    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    iput-wide p1, p0, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->modifiedTimeMillis:J

    .line 1410
    iput p3, p0, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->zoom:F

    .line 1411
    iput-wide p4, p0, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->zoomTimeMillis:J

    .line 1412
    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/stats/UsageStatistics$ViewRecord;FJ)V
    .locals 0

    .prologue
    .line 1398
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->updateZoomLevelAndTime(FJ)V

    return-void
.end method

.method private updateZoomLevelAndTime(FJ)V
    .locals 0

    .prologue
    .line 1415
    iput p1, p0, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->zoom:F

    .line 1416
    iput-wide p2, p0, Lcom/android/camera/stats/UsageStatistics$ViewRecord;->zoomTimeMillis:J

    .line 1417
    return-void
.end method
