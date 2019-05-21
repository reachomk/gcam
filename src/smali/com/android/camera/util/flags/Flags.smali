.class public Lcom/android/camera/util/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# instance fields
.field private final flagReader:Lcom/android/camera/util/flags/FlagReader;


# direct methods
.method constructor <init>(Lcom/android/camera/util/flags/FlagReader;)V
    .locals 0

    .prologue
    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    iput-object p1, p0, Lcom/android/camera/util/flags/Flags;->flagReader:Lcom/android/camera/util/flags/FlagReader;

    .line 2014
    return-void
.end method


# virtual methods
.method public get$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TJ6OOB7ECNK2P328PM62PPR55D0____(Lcom/android/camera/util/flags/CameraFlag;)Z
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/camera/util/flags/Flags;->flagReader:Lcom/android/camera/util/flags/FlagReader;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/flags/FlagReader;->getAdbValue(Lcom/android/camera/util/flags/CameraFlag;)Z

    move-result v0

    return v0
.end method
