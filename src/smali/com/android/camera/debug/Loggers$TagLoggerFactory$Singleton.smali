.class final Lcom/android/camera/debug/Loggers$TagLoggerFactory$Singleton;
.super Ljava/lang/Object;
.source "Loggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/Loggers$TagLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/debug/Loggers$TagLoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/android/camera/debug/Loggers$TagLoggerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Loggers$TagLoggerFactory;-><init>(B)V

    sput-object v0, Lcom/android/camera/debug/Loggers$TagLoggerFactory$Singleton;->INSTANCE:Lcom/android/camera/debug/Loggers$TagLoggerFactory;

    return-void
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Loggers$TagLoggerFactory;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/camera/debug/Loggers$TagLoggerFactory$Singleton;->INSTANCE:Lcom/android/camera/debug/Loggers$TagLoggerFactory;

    return-object v0
.end method
