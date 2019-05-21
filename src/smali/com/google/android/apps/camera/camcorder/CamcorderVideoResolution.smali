.class public final enum Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;
.super Ljava/lang/Enum;
.source "CamcorderVideoResolution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field public static final enum RES_1080P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field public static final enum RES_2160P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field public static final enum RES_480P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field public static final enum RES_720P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field public static final enum RES_CIF:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field public static final enum RES_QCIF:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field public static final enum RES_QVGA:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field public static final enum RES_UNKNOWN:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field private static final sizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final size:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 13
    new-instance v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    const-string v2, "RES_UNKNOWN"

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_UNKNOWN:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 14
    new-instance v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    const-string v2, "RES_QCIF"

    const/16 v3, 0xb0

    const/16 v4, 0x90

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_QCIF:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 15
    new-instance v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    const-string v2, "RES_QVGA"

    const/16 v3, 0x140

    const/16 v4, 0xf0

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_QVGA:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 16
    new-instance v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    const-string v2, "RES_CIF"

    const/16 v3, 0x160

    const/16 v4, 0x120

    invoke-direct {v1, v2, v8, v3, v4}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_CIF:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 17
    new-instance v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    const-string v2, "RES_480P"

    const/4 v3, 0x4

    const/16 v4, 0x2d0

    const/16 v5, 0x1e0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_480P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 18
    new-instance v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    const-string v2, "RES_720P"

    const/4 v3, 0x5

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_720P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 19
    new-instance v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    const-string v2, "RES_1080P"

    const/4 v3, 0x6

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_1080P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 20
    new-instance v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    const-string v2, "RES_2160P"

    const/4 v3, 0x7

    const/16 v4, 0xf00

    const/16 v5, 0x870

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_2160P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 12
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    sget-object v2, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_UNKNOWN:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    aput-object v2, v1, v0

    sget-object v2, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_QCIF:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_QVGA:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_CIF:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    aput-object v2, v1, v8

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_480P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_720P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_1080P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_2160P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->$VALUES:[Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->sizeMap:Ljava/util/Map;

    .line 28
    invoke-static {}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->values()[Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 29
    sget-object v4, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->sizeMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->size:Landroid/util/Size;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p3, p4}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->size:Landroid/util/Size;

    .line 35
    return-void
.end method

.method public static createComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution$1;

    invoke-direct {v0}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution$1;-><init>()V

    return-object v0
.end method

.method public static of(Landroid/util/Size;)Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->sizeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->$VALUES:[Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-virtual {v0}, [Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    return-object v0
.end method


# virtual methods
.method public final getArea()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->size:Landroid/util/Size;

    return-object v0
.end method
