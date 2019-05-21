.class final Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable$1;
.super Ljava/lang/Object;
.source "LoggingFeatureTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable;->setFeatureValue(JLcom/google/android/libraries/smartburst/utils/Feature;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable;

.field private synthetic val$feature:Lcom/google/android/libraries/smartburst/utils/Feature;

.field private synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable;JLcom/google/android/libraries/smartburst/utils/Feature;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable$1;->this$0:Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable;

    iput-wide p2, p0, Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable$1;->val$timestamp:J

    iput-object p4, p0, Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable$1;->val$feature:Lcom/google/android/libraries/smartburst/utils/Feature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable$1;->this$0:Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable;->access$000(Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable;)Ljava/io/Writer;

    move-result-object v0

    const-string v1, "%d,%d,%s%n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable$1;->val$timestamp:J

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable$1;->val$feature:Lcom/google/android/libraries/smartburst/utils/Feature;

    .line 56
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/utils/Feature;->getType()Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 54
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
