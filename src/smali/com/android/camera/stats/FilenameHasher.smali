.class Lcom/android/camera/stats/FilenameHasher;
.super Ljava/lang/Object;
.source "FilenameHasher.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static sInstance:Lcom/android/camera/stats/FilenameHasher;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final shaMessageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "FilenameHasher"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/FilenameHasher;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/FilenameHasher;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/camera/stats/FilenameHasher;->shaMessageDigest:Ljava/security/MessageDigest;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/FilenameHasher;->lock:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    .line 77
    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/camera/stats/FilenameHasher;
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/android/camera/stats/FilenameHasher;->sInstance:Lcom/android/camera/stats/FilenameHasher;

    if-nez v0, :cond_0

    .line 30
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/android/camera/stats/FilenameHasher;

    invoke-direct {v1, v0}, Lcom/android/camera/stats/FilenameHasher;-><init>(Ljava/security/MessageDigest;)V

    sput-object v1, Lcom/android/camera/stats/FilenameHasher;->sInstance:Lcom/android/camera/stats/FilenameHasher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    sget-object v0, Lcom/android/camera/stats/FilenameHasher;->sInstance:Lcom/android/camera/stats/FilenameHasher;

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot initialize file name hasher"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private toSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/camera/stats/FilenameHasher;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/FilenameHasher;->shaMessageDigest:Ljava/security/MessageDigest;

    sget-object v2, Lcom/android/camera/stats/FilenameHasher;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/stats/FilenameHasher;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public hashFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/stats/FilenameHasher;->toSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
