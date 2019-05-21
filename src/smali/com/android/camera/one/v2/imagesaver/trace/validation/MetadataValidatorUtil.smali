.class final Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;
.super Ljava/lang/Object;
.source "MetadataValidatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;
    }
.end annotation


# instance fields
.field private final characteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;->characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 28
    return-void
.end method


# virtual methods
.method public final forTrace(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;->characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    new-instance v2, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;

    invoke-direct {v2, p1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;-><init>(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)V

    invoke-direct {v0, v1, v2, p1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil$MetadataValidator;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationHelper;Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)V

    return-object v0
.end method
