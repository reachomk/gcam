.class final Lcom/google/android/apps/refocus/camera/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/camera/CameraPreview;
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
        "Lcom/android/ex/camera2/portability/Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 65
    check-cast p1, Lcom/android/ex/camera2/portability/Size;

    check-cast p2, Lcom/android/ex/camera2/portability/Size;

    .line 1068
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1069
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    .line 1070
    :cond_0
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    sub-int/2addr v0, v1

    .line 65
    goto :goto_0
.end method
