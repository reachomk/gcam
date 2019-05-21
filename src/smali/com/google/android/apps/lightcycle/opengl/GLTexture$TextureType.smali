.class public final Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;
.super Ljava/lang/Enum;
.source "GLTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/opengl/GLTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNMUS35DPJMOBQ79HA6AU3KELP6A92KCLS78TBICLA7IS357C______:[I

.field public static final enum NearestNeighbor$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TNN0PBECTM2UHQCAHINGT3LE9II8L35F1Q7ASJ5AHSN0P9R:I

.field public static final enum Standard$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TNN0PBECTM2UHQCAHINGT3LE9II8L35F1Q7ASJ5AHSN0P9R:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 20
    sput v3, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->Standard$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TNN0PBECTM2UHQCAHINGT3LE9II8L35F1Q7ASJ5AHSN0P9R:I

    .line 21
    sput v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->NearestNeighbor$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TNN0PBECTM2UHQCAHINGT3LE9II8L35F1Q7ASJ5AHSN0P9R:I

    .line 19
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->Standard$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TNN0PBECTM2UHQCAHINGT3LE9II8L35F1Q7ASJ5AHSN0P9R:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->NearestNeighbor$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TNN0PBECTM2UHQCAHINGT3LE9II8L35F1Q7ASJ5AHSN0P9R:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->$VALUES$BD666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNMUS35DPJMOBQ79HA6AU3KELP6A92KCLS78TBICLA7IS357C______:[I

    return-void
.end method
