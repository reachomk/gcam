.class public final enum Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;
.super Ljava/lang/Enum;
.source "CamcorderProfileHfrQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

.field private static enum QUALITY_1080P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

.field private static enum QUALITY_2160P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

.field private static enum QUALITY_480P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

.field private static enum QUALITY_720P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

.field private static final resMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            "Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;",
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
            "Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final quality:I

.field private final resolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 12
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    const-string v2, "QUALITY_480P"

    const/16 v3, 0x7d2

    sget-object v4, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_480P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->QUALITY_480P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    .line 13
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    const-string v2, "QUALITY_720P"

    const/16 v3, 0x7d3

    sget-object v4, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_720P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->QUALITY_720P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    .line 14
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    const-string v2, "QUALITY_1080P"

    const/16 v3, 0x7d4

    sget-object v4, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_1080P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->QUALITY_1080P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    .line 15
    new-instance v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    const-string v2, "QUALITY_2160P"

    const/16 v3, 0x7d5

    sget-object v4, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_2160P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;-><init>(Ljava/lang/String;IILcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->QUALITY_2160P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    .line 11
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    sget-object v2, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->QUALITY_480P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    aput-object v2, v1, v0

    sget-object v2, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->QUALITY_720P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->QUALITY_1080P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->QUALITY_2160P:Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->$VALUES:[Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->resMap:Ljava/util/Map;

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->valueMap:Ljava/util/Map;

    .line 26
    invoke-static {}, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->values()[Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 27
    sget-object v4, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->resMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->resolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v4, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->valueMap:Ljava/util/Map;

    iget v5, v3, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->quality:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->quality:I

    .line 55
    iput-object p4, p0, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->resolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 56
    return-void
.end method

.method public static of(Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->resMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->$VALUES:[Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    invoke-virtual {v0}, [Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->quality:I

    return v0
.end method
