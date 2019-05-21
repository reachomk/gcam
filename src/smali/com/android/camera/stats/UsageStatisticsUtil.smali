.class public Lcom/android/camera/stats/UsageStatisticsUtil;
.super Ljava/lang/Object;
.source "UsageStatisticsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public buildPreviewSmoothnessArray(Ljava/util/List;)[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/stats/ViewfinderJankSession;",
            ">;)[",
            "Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;"
        }
    .end annotation

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    .line 27
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 28
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/ViewfinderJankSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/ViewfinderJankSession;->buildPreviewSmoothnessProto()Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    move-result-object v0

    aput-object v0, v2, v1

    .line 27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 30
    goto :goto_0
.end method
