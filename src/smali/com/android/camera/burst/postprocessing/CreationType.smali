.class public final enum Lcom/android/camera/burst/postprocessing/CreationType;
.super Ljava/lang/Enum;
.source "CreationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/burst/postprocessing/CreationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/burst/postprocessing/CreationType;

.field public static final enum ANIMATION:Lcom/android/camera/burst/postprocessing/CreationType;

.field public static final enum COLLAGE:Lcom/android/camera/burst/postprocessing/CreationType;

.field public static final enum GROUP_SMILES:Lcom/android/camera/burst/postprocessing/CreationType;

.field public static final enum PHOTO_BOOTH:Lcom/android/camera/burst/postprocessing/CreationType;

.field public static final enum VFR_VIDEO:Lcom/android/camera/burst/postprocessing/CreationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/android/camera/burst/postprocessing/CreationType;

    const-string v1, "COLLAGE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/burst/postprocessing/CreationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->COLLAGE:Lcom/android/camera/burst/postprocessing/CreationType;

    .line 10
    new-instance v0, Lcom/android/camera/burst/postprocessing/CreationType;

    const-string v1, "ANIMATION"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/burst/postprocessing/CreationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->ANIMATION:Lcom/android/camera/burst/postprocessing/CreationType;

    .line 11
    new-instance v0, Lcom/android/camera/burst/postprocessing/CreationType;

    const-string v1, "PHOTO_BOOTH"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/burst/postprocessing/CreationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->PHOTO_BOOTH:Lcom/android/camera/burst/postprocessing/CreationType;

    .line 12
    new-instance v0, Lcom/android/camera/burst/postprocessing/CreationType;

    const-string v1, "GROUP_SMILES"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/burst/postprocessing/CreationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->GROUP_SMILES:Lcom/android/camera/burst/postprocessing/CreationType;

    .line 13
    new-instance v0, Lcom/android/camera/burst/postprocessing/CreationType;

    const-string v1, "VFR_VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/burst/postprocessing/CreationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->VFR_VIDEO:Lcom/android/camera/burst/postprocessing/CreationType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/burst/postprocessing/CreationType;

    sget-object v1, Lcom/android/camera/burst/postprocessing/CreationType;->COLLAGE:Lcom/android/camera/burst/postprocessing/CreationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/burst/postprocessing/CreationType;->ANIMATION:Lcom/android/camera/burst/postprocessing/CreationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/burst/postprocessing/CreationType;->PHOTO_BOOTH:Lcom/android/camera/burst/postprocessing/CreationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/burst/postprocessing/CreationType;->GROUP_SMILES:Lcom/android/camera/burst/postprocessing/CreationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/burst/postprocessing/CreationType;->VFR_VIDEO:Lcom/android/camera/burst/postprocessing/CreationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->$VALUES:[Lcom/android/camera/burst/postprocessing/CreationType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromArtifactType(Ljava/lang/String;)Lcom/android/camera/burst/postprocessing/CreationType;
    .locals 4

    .prologue
    .line 26
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->isCollage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->COLLAGE:Lcom/android/camera/burst/postprocessing/CreationType;

    .line 35
    :goto_0
    return-object v0

    .line 28
    :cond_0
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->ANIMATION:Lcom/android/camera/burst/postprocessing/CreationType;

    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "AllSmiles"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->GROUP_SMILES:Lcom/android/camera/burst/postprocessing/CreationType;

    goto :goto_0

    .line 32
    :cond_2
    const-string v0, "Collage_PhotoBooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->PHOTO_BOOTH:Lcom/android/camera/burst/postprocessing/CreationType;

    goto :goto_0

    .line 34
    :cond_3
    const-string v0, "Video_VFR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->VFR_VIDEO:Lcom/android/camera/burst/postprocessing/CreationType;

    goto :goto_0

    .line 37
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No creation type for artifact "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static values()[Lcom/android/camera/burst/postprocessing/CreationType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->$VALUES:[Lcom/android/camera/burst/postprocessing/CreationType;

    invoke-virtual {v0}, [Lcom/android/camera/burst/postprocessing/CreationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/burst/postprocessing/CreationType;

    return-object v0
.end method
