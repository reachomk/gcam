.class final Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket$1;
.super Ljava/lang/Object;
.source "ResolutionUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->add(Lcom/android/camera/util/Size;)V
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
        "Lcom/android/camera/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 77
    check-cast p1, Lcom/android/camera/util/Size;

    check-cast p2, Lcom/android/camera/util/Size;

    .line 1081
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 77
    return v0
.end method
