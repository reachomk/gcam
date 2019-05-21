.class public final Lcom/android/camera/session/StackSaverImpl;
.super Ljava/lang/Object;
.source "StackSaverImpl.java"

# interfaces
.implements Lcom/android/camera/session/StackSaver;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final filesProxy:Lcom/android/camera/storage/FilesProxy;

.field private final gpsLocation:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final parentSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private final stackFolderFileNamer:Lcom/android/camera/storage/FileNamer;

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "StackSaverImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/session/StackSaverImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/session/StackableSession;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/FilesProxy;Lcom/google/common/base/Optional;Landroid/content/ContentResolver;Lcom/android/camera/storage/Storage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/session/StackableSession;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/android/camera/storage/FilesProxy;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/camera/storage/Storage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/StackableSession;

    iput-object v0, p0, Lcom/android/camera/session/StackSaverImpl;->parentSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 55
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FileNamer;

    iput-object v0, p0, Lcom/android/camera/session/StackSaverImpl;->stackFolderFileNamer:Lcom/android/camera/storage/FileNamer;

    .line 56
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FilesProxy;

    iput-object v0, p0, Lcom/android/camera/session/StackSaverImpl;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    .line 57
    iput-object p4, p0, Lcom/android/camera/session/StackSaverImpl;->gpsLocation:Lcom/google/common/base/Optional;

    .line 58
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/camera/session/StackSaverImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 59
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/Storage;

    iput-object v0, p0, Lcom/android/camera/session/StackSaverImpl;->storage:Lcom/android/camera/storage/Storage;

    .line 60
    return-void
.end method


# virtual methods
.method public final createStackedSession(Lcom/android/camera/session/StackedCaptureSession$Listener;)Lcom/android/camera/session/StackedCaptureSession;
    .locals 8

    .prologue
    .line 64
    .line 1072
    iget-object v0, p0, Lcom/android/camera/session/StackSaverImpl;->parentSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1073
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 1075
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1076
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1077
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1078
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1079
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 65
    sget-object v0, Lcom/android/camera/session/StackSaverImpl;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Stacked ID generated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/android/camera/session/StackedCaptureSession;

    iget-object v2, p0, Lcom/android/camera/session/StackSaverImpl;->stackFolderFileNamer:Lcom/android/camera/storage/FileNamer;

    iget-object v3, p0, Lcom/android/camera/session/StackSaverImpl;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    iget-object v4, p0, Lcom/android/camera/session/StackSaverImpl;->contentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/camera/session/StackSaverImpl;->gpsLocation:Lcom/google/common/base/Optional;

    iget-object v7, p0, Lcom/android/camera/session/StackSaverImpl;->storage:Lcom/android/camera/storage/Storage;

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/session/StackedCaptureSession;-><init>(Landroid/net/Uri;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/FilesProxy;Landroid/content/ContentResolver;Lcom/google/common/base/Optional;Lcom/android/camera/session/StackedCaptureSession$Listener;Lcom/android/camera/storage/Storage;)V

    return-object v0
.end method
