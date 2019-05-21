.class public final Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideLensShadingMapFactory;
.super Ljava/lang/Object;
.source "HdrPlusSessionModule_ProvideLensShadingMapFactory.java"

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
.field private static final INSTANCE:Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideLensShadingMapFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideLensShadingMapFactory;

    invoke-direct {v0}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideLensShadingMapFactory;-><init>()V

    sput-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideLensShadingMapFactory;->INSTANCE:Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideLensShadingMapFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
    .line 22
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideLensShadingMapFactory;->INSTANCE:Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideLensShadingMapFactory;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1084
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 1086
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1084
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    .line 1017
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1016
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 8
    return-object v0
.end method
