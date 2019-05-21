.class final Lcom/android/camera/one/v2/common/RequestTransformers$1;
.super Ljava/lang/Object;
.source "RequestTransformers.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/android/camera/one/v2/core/Request$Parameter",
        "<TT;>;",
        "Lcom/android/camera/one/v2/common/RequestTransformer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, Lcom/android/camera/one/v2/core/Request$Parameter;

    .line 1081
    invoke-static {p1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameter(Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    .line 78
    return-object v0
.end method
