.class public final enum Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;
.super Ljava/lang/Enum;
.source "ControlAfMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

.field public static final enum AUTO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

.field public static final enum CONTINUOUS_PICTURE:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

.field private static enum CONTINUOUS_VIDEO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

.field private static enum EDOF:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

.field private static enum MACRO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

.field public static final enum OFF:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

.field private static final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final metadataValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 11
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    const-string v2, "OFF"

    invoke-direct {v1, v2, v0, v0}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->OFF:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    .line 12
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    const-string v2, "AUTO"

    invoke-direct {v1, v2, v5, v5}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->AUTO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    .line 13
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    const-string v2, "MACRO"

    invoke-direct {v1, v2, v6, v6}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->MACRO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    .line 14
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    const-string v2, "CONTINUOUS_VIDEO"

    invoke-direct {v1, v2, v7, v7}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->CONTINUOUS_VIDEO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    .line 15
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    const-string v2, "CONTINUOUS_PICTURE"

    invoke-direct {v1, v2, v8, v8}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->CONTINUOUS_PICTURE:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    .line 16
    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    const-string v2, "EDOF"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->EDOF:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    .line 10
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    sget-object v2, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->OFF:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    aput-object v2, v1, v0

    sget-object v2, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->AUTO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->MACRO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->CONTINUOUS_VIDEO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->CONTINUOUS_PICTURE:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->EDOF:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->$VALUES:[Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->valueMap:Ljava/util/Map;

    .line 22
    invoke-static {}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->values()[Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 23
    sget-object v4, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->valueMap:Ljava/util/Map;

    iget v5, v3, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->metadataValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->metadataValue:I

    .line 45
    return-void
.end method

.method public static of(I)Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    .line 37
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unknown metadata value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->$VALUES:[Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    return-object v0
.end method


# virtual methods
.method public final getMetadataValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->metadataValue:I

    return v0
.end method
