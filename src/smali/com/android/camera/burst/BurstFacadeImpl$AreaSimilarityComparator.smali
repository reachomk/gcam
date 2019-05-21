.class final Lcom/android/camera/burst/BurstFacadeImpl$AreaSimilarityComparator;
.super Ljava/lang/Object;
.source "BurstFacadeImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstFacadeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AreaSimilarityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/camera/util/Size;",
        ">;"
    }
.end annotation


# instance fields
.field private desiredSize:Lcom/android/camera/util/Size;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/Size;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeImpl$AreaSimilarityComparator;->desiredSize:Lcom/android/camera/util/Size;

    .line 307
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 302
    check-cast p1, Lcom/android/camera/util/Size;

    check-cast p2, Lcom/android/camera/util/Size;

    .line 1312
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl$AreaSimilarityComparator;->desiredSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/burst/BurstFacadeImpl$AreaSimilarityComparator;->desiredSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 1311
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 302
    return v0
.end method
