.class final Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$2;
.super Ljava/lang/Object;
.source "FallbackSingleImageSaver.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/apps/camera/async/Observable",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic val$fallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

.field private synthetic val$primary$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$2;->val$primary$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$2;->val$fallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Integer;

    .line 1061
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$2;->val$primary$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->maxThroughput()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$2;->val$fallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->maxThroughput()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    goto :goto_0
.end method
