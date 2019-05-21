.class public final Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;
.super Ljava/lang/Object;
.source "CommonRequestTransformerModule_ProvideJpegQualityFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;

    invoke-direct {v0}, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;-><init>()V

    sput-object v0, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;->INSTANCE:Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;->INSTANCE:Lcom/android/camera/one/v2/common/CommonRequestTransformerModule_ProvideJpegQualityFactory;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1030
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    .line 1016
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1015
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 7
    return-object v0
.end method
