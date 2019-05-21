.class final Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;
.super Ljava/lang/Object;
.source "CreationTimestampProvider.java"


# instance fields
.field private final artifactCreationTimestampsMs:J

.field private final frameCreationTimestampsMs:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionStartTimestampMs:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Summary timestamps should not be empty"

    .line 32
    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->frameCreationTimestampsMs:Landroid/util/LongSparseArray;

    .line 36
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 38
    sub-long v6, v4, v2

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    .line 39
    add-long/2addr v6, p2

    .line 40
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->frameCreationTimestampsMs:Landroid/util/LongSparseArray;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_0
    move v0, v1

    .line 33
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->frameCreationTimestampsMs:Landroid/util/LongSparseArray;

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->artifactCreationTimestampsMs:J

    .line 46
    iput-wide p2, p0, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->sessionStartTimestampMs:J

    .line 47
    return-void
.end method


# virtual methods
.method public final getArtifactCreationTimestamp()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->artifactCreationTimestampsMs:J

    return-wide v0
.end method

.method public final getFrameCreationTimestamp(J)J
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->frameCreationTimestampsMs:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSessionStartTimestamp()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;->sessionStartTimestampMs:J

    return-wide v0
.end method
