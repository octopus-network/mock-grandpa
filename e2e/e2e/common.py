from dataclasses import dataclass
from enum import Enum
from time import sleep
from typing import NewType


@dataclass
class Height:
    revision_height: int
    revision_number: int


@dataclass
class Duration:
    nanos: int
    secs: int


@dataclass
class TrustLevel:
    denominator: int
    numerator: int


class Ordering(Enum):
    UNORDERED = 'UNORDERED'
    ORDERED = 'ORDERED'


PortId = NewType('PortId', str)
ChainId = NewType('ChainId', str)
ClientId = NewType('ClientId', str)
ChannelId = NewType('ChannelId', str)
ConnectionId = NewType('ConnectionId', str)
KeyName = NewType('KeyName', str)

Hex = NewType('Hex', str)
Sequence = NewType('Sequence', str)
Timestamp = NewType('Timestamp', int)
ClientType = NewType('ClientType', str)
BlockHeight = NewType('BlockHeight', str)


def split():
    sleep(20)
    print()
