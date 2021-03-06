.class public final Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;
.super Ljava/lang/Object;
.source "ParcelableMessageNanoCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PMNCreator"


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    .line 48
    return-void
.end method

.method static writeToParcel(Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Landroid/os/Parcel;)V
    .registers 4
    .param p1, "message"    # Lcom/google/protobuf/nano/MessageNano;
    .param p2, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 85
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/MessageNano;
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 58
    .local v3, "data":[B
    const/4 v9, 0x0

    .line 61
    .local v9, "proto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    :try_start_9
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 62
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 63
    .local v8, "instance":Ljava/lang/Object;
    move-object v0, v8

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    move-object v9, v0

    .line 64
    .local v9, "proto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    invoke-static {v9, v3}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_18} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_18} :catch_2f
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_18} :catch_24
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_9 .. :try_end_18} :catch_19

    .line 75
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "instance":Ljava/lang/Object;
    .end local v9    # "proto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    :goto_18
    return-object v9

    .line 71
    :catch_19
    move-exception v4

    .line 72
    .local v4, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    const-string/jumbo v10, "PMNCreator"

    const-string/jumbo v11, "Exception trying to create proto from parcel"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 69
    .end local v4    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_24
    move-exception v7

    .line 70
    .local v7, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v10, "PMNCreator"

    const-string/jumbo v11, "Exception trying to create proto from parcel"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 67
    .end local v7    # "e":Ljava/lang/InstantiationException;
    :catch_2f
    move-exception v6

    .line 68
    .local v6, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v10, "PMNCreator"

    const-string/jumbo v11, "Exception trying to create proto from parcel"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 65
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_3a
    move-exception v5

    .line 66
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v10, "PMNCreator"

    const-string/jumbo v11, "Exception trying to create proto from parcel"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/protobuf/nano/MessageNano;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 80
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->newArray(I)[Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method
