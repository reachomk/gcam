.class public final enum Lcom/android/camera/storage/MimeType;
.super Ljava/lang/Enum;
.source "MimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/storage/MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/storage/MimeType;

.field public static final enum DNG:Lcom/android/camera/storage/MimeType;

.field public static final enum GIF:Lcom/android/camera/storage/MimeType;

.field public static final enum JPEG:Lcom/android/camera/storage/MimeType;

.field public static final enum MPEG4:Lcom/android/camera/storage/MimeType;

.field private static enum OTHER:Lcom/android/camera/storage/MimeType;

.field public static final enum PHOTOSPHERE:Lcom/android/camera/storage/MimeType;

.field public static final enum THREE_GPP:Lcom/android/camera/storage/MimeType;

.field private static final imageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/storage/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field private static final reverseLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/storage/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field private static final videoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/storage/MimeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final filenameExtension:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 17
    new-instance v1, Lcom/android/camera/storage/MimeType;

    const-string v2, "DNG"

    const-string v3, "image/x-adobe-dng"

    const-string v4, ".dng"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/camera/storage/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/storage/MimeType;->DNG:Lcom/android/camera/storage/MimeType;

    .line 18
    new-instance v1, Lcom/android/camera/storage/MimeType;

    const-string v2, "GIF"

    const-string v3, "image/gif"

    const-string v4, ".gif"

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/camera/storage/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/storage/MimeType;->GIF:Lcom/android/camera/storage/MimeType;

    .line 19
    new-instance v1, Lcom/android/camera/storage/MimeType;

    const-string v2, "JPEG"

    const-string v3, "image/jpeg"

    const-string v4, ".jpg"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/camera/storage/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    .line 20
    new-instance v1, Lcom/android/camera/storage/MimeType;

    const-string v2, "PHOTOSPHERE"

    const-string v3, "application/vnd.google.panorama360+jpg"

    const-string v4, ".jpg"

    invoke-direct {v1, v2, v8, v3, v4}, Lcom/android/camera/storage/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/storage/MimeType;->PHOTOSPHERE:Lcom/android/camera/storage/MimeType;

    .line 25
    new-instance v1, Lcom/android/camera/storage/MimeType;

    const-string v2, "MPEG4"

    const-string v3, "video/mp4"

    const-string v4, ".mp4"

    invoke-direct {v1, v2, v9, v3, v4}, Lcom/android/camera/storage/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/storage/MimeType;->MPEG4:Lcom/android/camera/storage/MimeType;

    .line 26
    new-instance v1, Lcom/android/camera/storage/MimeType;

    const-string v2, "THREE_GPP"

    const/4 v3, 0x5

    const-string v4, "video/3gpp"

    const-string v5, ".3gp"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/storage/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/storage/MimeType;->THREE_GPP:Lcom/android/camera/storage/MimeType;

    .line 35
    new-instance v1, Lcom/android/camera/storage/MimeType;

    const-string v2, "OTHER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/camera/storage/MimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/camera/storage/MimeType;->OTHER:Lcom/android/camera/storage/MimeType;

    .line 13
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/camera/storage/MimeType;

    sget-object v2, Lcom/android/camera/storage/MimeType;->DNG:Lcom/android/camera/storage/MimeType;

    aput-object v2, v1, v0

    sget-object v2, Lcom/android/camera/storage/MimeType;->GIF:Lcom/android/camera/storage/MimeType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/camera/storage/MimeType;->PHOTOSPHERE:Lcom/android/camera/storage/MimeType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/camera/storage/MimeType;->MPEG4:Lcom/android/camera/storage/MimeType;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/android/camera/storage/MimeType;->THREE_GPP:Lcom/android/camera/storage/MimeType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/android/camera/storage/MimeType;->OTHER:Lcom/android/camera/storage/MimeType;

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/camera/storage/MimeType;->$VALUES:[Lcom/android/camera/storage/MimeType;

    .line 56
    new-instance v1, Lcom/google/common/collect/Platform;

    invoke-direct {v1}, Lcom/google/common/collect/Platform;-><init>()V

    .line 57
    invoke-static {}, Lcom/android/camera/storage/MimeType;->values()[Lcom/android/camera/storage/MimeType;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 58
    iget-object v5, v4, Lcom/android/camera/storage/MimeType;->value:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/google/common/collect/Platform;->put$5166KOBMC4NMOOBECSNKUOJACLHN8EQCD9GNCO9FDHGMSPPF9TH6KPB3EGTIIJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM6RRCDHIM6T1F95MMQTBKC5H6OPADC5O28GJLD5M68PBI7C______(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Platform;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/Platform;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/MimeType;->reverseLookupMap:Ljava/util/Map;

    .line 61
    sget-object v0, Lcom/android/camera/storage/MimeType;->DNG:Lcom/android/camera/storage/MimeType;

    sget-object v1, Lcom/android/camera/storage/MimeType;->GIF:Lcom/android/camera/storage/MimeType;

    sget-object v2, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    sget-object v3, Lcom/android/camera/storage/MimeType;->PHOTOSPHERE:Lcom/android/camera/storage/MimeType;

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/MimeType;->imageSet:Ljava/util/Set;

    .line 62
    sget-object v0, Lcom/android/camera/storage/MimeType;->MPEG4:Lcom/android/camera/storage/MimeType;

    sget-object v1, Lcom/android/camera/storage/MimeType;->THREE_GPP:Lcom/android/camera/storage/MimeType;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/MimeType;->videoSet:Ljava/util/Set;

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/storage/MimeType;->value:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/storage/MimeType;->filenameExtension:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lcom/android/camera/storage/MimeType;->value:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/android/camera/storage/MimeType;->filenameExtension:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/android/camera/storage/MimeType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/camera/storage/MimeType;->reverseLookupMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/android/camera/storage/MimeType;->OTHER:Lcom/android/camera/storage/MimeType;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/storage/MimeType;->reverseLookupMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/MimeType;

    goto :goto_0
.end method

.method public static values()[Lcom/android/camera/storage/MimeType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/camera/storage/MimeType;->$VALUES:[Lcom/android/camera/storage/MimeType;

    invoke-virtual {v0}, [Lcom/android/camera/storage/MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/storage/MimeType;

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/storage/MimeType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilenameExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/storage/MimeType;->filenameExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final isImage()Z
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/camera/storage/MimeType;->imageSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isVideo()Z
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/camera/storage/MimeType;->videoSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
