.class final Lcom/android/camera/settings/ResolutionUtil$1;
.super Ljava/lang/Object;
.source "ResolutionUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/ResolutionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 235
    check-cast p1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    check-cast p2, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    .line 1239
    iget-object v0, p2, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->maxPixels:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->maxPixels:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 235
    return v0
.end method
