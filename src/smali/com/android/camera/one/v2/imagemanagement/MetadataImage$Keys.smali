.class public final Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Keys;
.super Ljava/lang/Object;
.source "MetadataImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keys"
.end annotation


# static fields
.field public static final IMAGE_ID:Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key",
            "<",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOTAL_CAPTURE_RESULT:Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    const-string v1, "TOTAL_CAPTURE_RESULT"

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Keys;->TOTAL_CAPTURE_RESULT:Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    .line 23
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    const-string v1, "IMAGE_ID"

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Keys;->IMAGE_ID:Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    .line 24
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;-><init>(Ljava/lang/String;)V

    return-void
.end method
