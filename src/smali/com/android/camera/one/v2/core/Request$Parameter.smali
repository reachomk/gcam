.class public final Lcom/android/camera/one/v2/core/Request$Parameter;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final key:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/one/v2/core/Request$Parameter;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 31
    iput-object p2, p0, Lcom/android/camera/one/v2/core/Request$Parameter;->value:Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    instance-of v2, p1, Lcom/android/camera/one/v2/core/Request$Parameter;

    if-nez v2, :cond_2

    move v0, v1

    .line 48
    goto :goto_0

    .line 51
    :cond_2
    check-cast p1, Lcom/android/camera/one/v2/core/Request$Parameter;

    .line 53
    iget-object v2, p0, Lcom/android/camera/one/v2/core/Request$Parameter;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1035
    iget-object v3, p1, Lcom/android/camera/one/v2/core/Request$Parameter;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 53
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/one/v2/core/Request$Parameter;->value:Ljava/lang/Object;

    .line 1039
    iget-object v3, p1, Lcom/android/camera/one/v2/core/Request$Parameter;->value:Ljava/lang/Object;

    .line 53
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getKey()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/core/Request$Parameter;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/core/Request$Parameter;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/core/Request$Parameter;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/one/v2/core/Request$Parameter;->value:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 1079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 58
    return v0
.end method
