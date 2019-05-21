.class final Lcom/android/camera/hdrplus/HdrPlusState$5;
.super Lcom/google/googlex/gcam/BurstCallback;
.source "HdrPlusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hdrplus/HdrPlusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/hdrplus/HdrPlusState;


# direct methods
.method constructor <init>(Lcom/android/camera/hdrplus/HdrPlusState;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusState$5;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    invoke-direct {p0}, Lcom/google/googlex/gcam/BurstCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final Run(ILcom/google/googlex/gcam/ShotLogData;)V
    .locals 5

    .prologue
    .line 173
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusState;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Payload processing complete, burstId=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/android/camera/settings/ActivitySettingsModule;

    invoke-direct {v0, p2}, Lcom/android/camera/settings/ActivitySettingsModule;-><init>(Lcom/google/googlex/gcam/ShotLogData;)V

    .line 175
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusState$5;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v1, v1, Lcom/android/camera/hdrplus/HdrPlusState;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/stats/GcamUsageStatistics;->metaStatsReady$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMGP3IE1M7ASPF8THM2RAJD1NN8KRKC5Q76EP9AO______(ILcom/android/camera/settings/ActivitySettingsModule;)V

    .line 176
    return-void
.end method
