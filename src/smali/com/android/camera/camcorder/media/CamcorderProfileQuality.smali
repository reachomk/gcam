.class public final enum Lcom/android/camera/camcorder/media/CamcorderProfileQuality;
.super Ljava/lang/Enum;
.source "CamcorderProfileQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/camcorder/media/CamcorderProfileQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

.field private static enum QUALITY_1080P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

.field private static enum QUALITY_2160P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

.field private static enum QUALITY_480P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

.field private static enum QUALITY_720P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

.field private static enum QUALITY_CIF:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

.field private static enum QUALITY_QCIF:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

.field private static enum QUALITY_QVGA:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

.field private static final resMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            "Lcom/android/camera/camcorder/media/CamcorderProfileQuality;",
            ">;"
        }
    .end annotation
.end field

.field private static final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/camcorder/media/CamcorderProfileQuality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final quality:I

.field private final resolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 13
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    const-string v2, "QUALITY_QCIF"

    sget-object v3, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_QCIF:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v0, v6, v3}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_QCIF:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 14
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    const-string v2, "QUALITY_QVGA"

    const/4 v3, 0x1

    const/4 v4, 0x7

    sget-object v5, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_QVGA:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_QVGA:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 15
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    const-string v2, "QUALITY_CIF"

    sget-object v3, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_CIF:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_CIF:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 16
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    const-string v2, "QUALITY_480P"

    sget-object v3, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_480P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v7, v8, v3}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_480P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 17
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    const-string v2, "QUALITY_720P"

    sget-object v3, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_720P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v8, v9, v3}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_720P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 18
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    const-string v2, "QUALITY_1080P"

    const/4 v3, 0x6

    sget-object v4, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_1080P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v9, v3, v4}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_1080P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 19
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    const-string v2, "QUALITY_2160P"

    const/4 v3, 0x6

    const/16 v4, 0x8

    sget-object v5, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_2160P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_2160P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 12
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    sget-object v2, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_QCIF:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_QVGA:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_CIF:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_480P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_720P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_1080P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    aput-object v2, v1, v9

    const/4 v2, 0x6

    sget-object v3, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->QUALITY_2160P:Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->$VALUES:[Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->resMap:Ljava/util/Map;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->valueMap:Ljava/util/Map;

    .line 30
    invoke-static {}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->values()[Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 31
    sget-object v4, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->resMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->resolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v4, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->valueMap:Ljava/util/Map;

    iget v5, v3, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->quality:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->quality:I

    .line 61
    iput-object p4, p0, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->resolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 62
    return-void
.end method

.method public static of(Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/media/CamcorderProfileQuality;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->resMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/camcorder/media/CamcorderProfileQuality;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->$VALUES:[Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    invoke-virtual {v0}, [Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    return-object v0
.end method


# virtual methods
.method public final getResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->resolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->quality:I

    return v0
.end method
