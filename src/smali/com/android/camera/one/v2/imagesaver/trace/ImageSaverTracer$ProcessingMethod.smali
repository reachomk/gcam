.class public final enum Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;
.super Ljava/lang/Enum;
.source "ImageSaverTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessingMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

.field public static final enum HW_JPEG:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

.field public static final enum NPF_REPROCESSING:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

.field public static final enum REPROCESSING:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

.field public static final enum SW_JPEG:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    const-string v1, "HW_JPEG"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->HW_JPEG:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    .line 35
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    const-string v1, "SW_JPEG"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->SW_JPEG:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    .line 39
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    const-string v1, "NPF_REPROCESSING"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->NPF_REPROCESSING:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    .line 43
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    const-string v1, "REPROCESSING"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->REPROCESSING:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    sget-object v1, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->HW_JPEG:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->SW_JPEG:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->NPF_REPROCESSING:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->REPROCESSING:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->$VALUES:[Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->$VALUES:[Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    return-object v0
.end method
